import numpy as np

def estimate_standardization_params(X):
    mean = np.nanmean(X)
    std_dev = np.nanstd(X)
    
    return (mean, std_dev)

def standardize_features(X):
    (mean, std_dev) = estimate_standardization_params(X)
    # subtracting mean to centralize all features
    X_central = X - mean.reshape((1,-1))
    # Divide by standard deviation to get unit-variance for all features
    normalizer = np.where(std_dev > 0., std_dev, 1.).reshape((1,-1))
    X_standard = X_central / normalizer
    nan_data = np.isnan(X_standard)
    X_standard[nan_data] = 0

    return X_standard
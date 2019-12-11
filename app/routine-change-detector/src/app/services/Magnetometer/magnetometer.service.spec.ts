import { TestBed } from '@angular/core/testing';

import { MagnetometerService } from './magnetometer.service';

describe('MagnetometerService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MagnetometerService = TestBed.get(MagnetometerService);
    expect(service).toBeTruthy();
  });
});

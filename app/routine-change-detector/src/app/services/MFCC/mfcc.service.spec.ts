import { TestBed } from '@angular/core/testing';

import { MFCCService } from './mfcc.service';

describe('MFCCService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MFCCService = TestBed.get(MFCCService);
    expect(service).toBeTruthy();
  });
});

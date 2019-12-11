import { TestBed } from '@angular/core/testing';

import { PhoneStateService } from './phone-state.service';

describe('PhoneStateService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: PhoneStateService = TestBed.get(PhoneStateService);
    expect(service).toBeTruthy();
  });
});

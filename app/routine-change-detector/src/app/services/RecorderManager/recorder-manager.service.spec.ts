import { TestBed } from '@angular/core/testing';

import { RecorderManagerService } from './recorder-manager.service';

describe('RecorderManagerService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: RecorderManagerService = TestBed.get(RecorderManagerService);
    expect(service).toBeTruthy();
  });
});

import { TestBed } from '@angular/core/testing';

import { AudioSnippetService } from './audio-snippet.service';

describe('AudioSnippetService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AudioSnippetService = TestBed.get(AudioSnippetService);
    expect(service).toBeTruthy();
  });
});

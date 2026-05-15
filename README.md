# Banuba AI Talking Photo SDK — iOS sample

[Banuba AI Talking Photo API](https://www.banuba.com/ai-talking-photo-api) turns a single image and an audio track into a realistic talking-photo video with accurate lip-sync, natural facial expressions, and full-body motion — without distortions or hallucinations.

This repository is an iOS sample app that shows how to integrate the Banuba AI Talking Photo SDK end-to-end.

## Overview

The sample app demonstrates:
- Uploading a source photo with face detection and lighting validation.
- Uploading or recording an audio track and trimming it.
- Generating an AI talking-photo video and previewing the result.
- Exporting the generated MP4 for use in your app.

The underlying API supports audio in any language and has no hard limits on output resolution. Output videos can run 5+ minutes while maintaining stable quality.

## Requirements

- iOS 13.0+
- Xcode 15+
- Swift 5.9+
- A Banuba trial token (free — request below)

## License

Sample code in this repository is provided under the terms in the LICENSE file. The Banuba AI Talking Photo SDK itself is commercial — a trial token is required to run generation.

To obtain a free trial token, send a message via [www.banuba.com/contacts](https://www.banuba.com/contacts) — we'll respond with a trial token.

## Usage

1. Clone this repo.
2. Open the Xcode project.
3. Insert your trial token where indicated in the source.
4. Run on a device (an iPhone with a front camera is recommended for testing photo capture).

## Documentation

Product page: [www.banuba.com/ai-talking-photo-api](https://www.banuba.com/ai-talking-photo-api).
SDK technical docs: [docs.banuba.com](https://docs.banuba.com) (request access for AI Talking Photo specific docs via Support).

## Support

For integration help or to request the AI Talking Photo SDK trial, contact [www.banuba.com/support](https://www.banuba.com/support).

> ⚠ Fact-check needed before publishing: confirm minimum iOS version, Xcode/Swift versions, and the exact SDK package name with the iOS team. The product positioning above is pulled from www.banuba.com/ai-talking-photo-api and the AI Talking Photo case study in the docs folder.

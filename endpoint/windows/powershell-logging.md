# Optional PowerShell Logging

Microsoft Defender for Endpoint is the primary endpoint telemetry platform for this project. PowerShell Module Logging, Script Block Logging, and transcription are optional supplemental controls, not prerequisites for the MDE architecture.

Enable additional PowerShell logging only when a specific test or investigation requires it and the storage destination is protected. Logs can contain command arguments, file paths, tokens, and other sensitive content.

Record the exact policy settings used in the lab. Sanitize exported examples and never commit secrets or real user data. Do not enable transcription to an unsecured shared location.

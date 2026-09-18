# Automation Principles

## Idempotency

Avoid unnecessary changes when the desired state already exists.

## Validation

Validate prerequisites before modifying the system.

## Observability

Print useful status messages and return meaningful exit codes.

## Failure handling

Fail clearly instead of silently continuing after a critical error.

## Secrets

Use protected environment variables or a secret manager. Never commit credentials.

## Change flow

    Preflight → Change → Verify → Report

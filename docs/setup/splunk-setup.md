# Splunk Setup

## Receiver
Enable a receiving port on Splunk Enterprise and verify the actual configured port. TCP 9997 is the conventional lab example used here.

## Universal Forwarder
- Use `endpoint/forwarder/inputs.conf.example` as a starting point.
- Use `endpoint/forwarder/outputs.conf.example` as a starting point.
- Replace receiver placeholders in the local configuration.
- Restart the forwarder after changes.
- Verify events arrive before building detections.

## Index
The proposed index is `soclab`. Create it in Splunk Enterprise before sending events. Keep machine-specific settings outside tracked examples.

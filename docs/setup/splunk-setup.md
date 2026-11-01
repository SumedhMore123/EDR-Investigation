# Splunk Setup

## Receiver

Enable a receiving port on Splunk Enterprise and verify the actual configured port. TCP 9997 is the conventional lab example used in this project.

## Universal Forwarder

- Use `endpoint/forwarder/inputs.conf.example` as a starting point.
- Use `endpoint/forwarder/outputs.conf.example` as a starting point.
- Replace placeholder receiver values locally.
- Restart the forwarder after configuration changes.
- Verify events arrive before building detections.

## Index

The proposed index is `soclab`. Create it in Splunk Enterprise before sending events to it. Keep environment-specific settings outside tracked example files.

Reference: [Splunk Universal Forwarder configuration](https://help.splunk.com/en/splunk-enterprise/forward-and-process-data/forwarding-data).

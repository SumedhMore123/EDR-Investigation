# Process Investigation Playbook

1. Start from the alerting process and identify ProcessGuid and ParentProcessGuid if available.
2. Reconstruct ancestry using process GUIDs, timestamps, PIDs and parent fields.
3. Review image path, hash, signer and command line.
4. Correlate file, registry, DNS and network events.
5. Identify expected versus anomalous execution context.
6. Record a timeline and distinguish fact from hypothesis.

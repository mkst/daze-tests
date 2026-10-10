Both Unicorn and KVM pass this case against the Daze golden. The Unicorn
finite per-slice instruction guard was raised from 10M to 20M; no output
change or re-blessing was needed.

KVM object is 207527 bytes, `bdca81b7…1a50b` — byte-identical to
the aspsx-1.05-xlarge golden object; stdout differs only in the
`Psy-Q ASPSX version 1.07` banner line, stderr is empty in both.

DOSEMU2 oracle (dosemu 2.0pre9, same `-E` invocation) on the same
inputs:

- exit code: 0
- `0 error(s) from 34561 lines`
- object hash:
  `aaa6e81fc4aa14afd02db5117b0f4df7556a0c5817778d2713d57a6c9cfa3776`

Same relationship as 1.05-xlarge (whose oracle hash is `4c584d7d…`):
assembled code identical, allocator-dependent section metadata
shifted. Committed golden is the accepted Daze (KVM) result.

# ORYXYBER IR-DA-03 — Start here

You have a small case pack exported from a Linux server after a suspected compromise.

## Case pack path
`/home/user/oryxyber/IR-DA-03/case_pack/`

## Suggested workflow
1. Start with `auth.log` to understand access attempts and successful logins.
2. Correlate with `syslog` to confirm what happened right after the successful login.
3. Use `bash_history` and `evidence/` to validate post-auth actions and persistence.

## Quick commands
```bash
cd /home/user/oryxyber/IR-DA-03/case_pack

# brute force source
grep -E "Failed password|Invalid user" auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr | head

# successful logins
grep "Accepted" auth.log

# downloads / persistence
grep -RIn "curl\|wget\|cron\|/etc/cron.d" .
```

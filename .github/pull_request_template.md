## Description
Provide a concise summary of the changes and the architectural context.

## Code Checklist
- [ ] Strict types: File contains `declare(strict_types=1);`.
- [ ] Architecture Rules: No direct database logic inside Controllers.
- [ ] Scoping validation: Scoped Models use the `BelongsToTenantStrict` trait.
- [ ] Type safety: All parameters and return values are fully typed.
- [ ] Static Analysis: Running `./vendor/bin/phpstan` returns zero errors.

## Database Migrations Audit
- [ ] Composite indices: Checked that all tenant tables define primary or indexes on `['tenant_id', 'id']`.
- [ ] Downgrade script: Verify `down()` methods delete constraints and drop tables safely.

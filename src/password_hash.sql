-- PASSWORD HASH
-- Inherits from the built-in text type and adds the following:
-- • Bcrypt and Argon format check.

-- DROP DOMAIN IF EXISTS public.password_hash CASCADE;
CREATE DOMAIN IF NOT EXISTS public.password_hash AS text
    CONSTRAINT password_hash_format_ck CHECK (
        -- Bcrypt
        VALUE ~ '^\$2[ayb]\$[[:digit:]]+\$[[:alnum:]/.]+$' 
        -- Argon2i
        OR VALUE ~ '^\$argon2i\$v=[[:digit:]]+\$m=[[:digit:]]+,t=[[:digit:]]+,p=[[:digit:]]+\$[[:alnum:]]+\$[[:alnum:]/+]+$'
    );

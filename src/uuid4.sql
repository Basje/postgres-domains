-- UUID4
-- Inherits from the built-in uuid type and adds the following:
-- • RFC 4122 compliant canonical format check of version 4 uuid;
-- • Default value of random uuid version 4.

-- CREATE EXTENSION "uuid-ossp";
-- DROP DOMAIN IF EXISTS public.uuid4 CASCADE;
CREATE DOMAIN IF NOT EXISTS public.uuid4 AS uuid
    DEFAULT uuid_generate_v4()
    CONSTRAINT uuid4_format_ck CHECK (
        VALUE ~* '^[a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$'
    );

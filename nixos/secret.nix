
  services.postgresql.enable = true;
  services.postgresql.package = pkgs.postgresql_15;  # or another version you want
  services.postgresql.initialScript = pkgs.writeText "init.sql" ''
  CREATE USER blaz WITH SUPERUSER PASSWORD 'yourpassword';
  CREATE DATABASE testdb OWNER blaz;
'';

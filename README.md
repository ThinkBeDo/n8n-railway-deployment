# n8n Railway Deployment

This repository contains the configuration for deploying n8n workflow automation to Railway.

## Local Development

1. Ensure Docker is installed
2. Run `docker-compose up -d` to start n8n locally
3. Access n8n at http://localhost:5678
4. Default credentials: admin/password

## Railway Deployment

### Environment Variables Required:
- `N8N_BASIC_AUTH_ACTIVE=true`
- `N8N_BASIC_AUTH_USER=your_username`
- `N8N_BASIC_AUTH_PASSWORD=your_secure_password`
- `N8N_HOST=0.0.0.0`
- `N8N_PORT=5678`
- `N8N_PROTOCOL=https`
- `DATABASE_TYPE=postgresdb` (recommended for production)
- `DB_POSTGRESDB_HOST=your_postgres_host`
- `DB_POSTGRESDB_PORT=5432`
- `DB_POSTGRESDB_DATABASE=n8n`
- `DB_POSTGRESDB_USER=your_db_user`
- `DB_POSTGRESDB_PASSWORD=your_db_password`

### Deployment Steps:
1. Connect this repository to Railway
2. Configure environment variables
3. Deploy

## API Access

For external tools (like Claude AI), ensure these settings:
- API access is enabled
- Proper authentication is configured
- CORS is configured if needed

## Data Migration

To migrate existing workflows from local SQLite:
1. Export workflows from local n8n
2. Import to Railway-deployed n8n
3. Or migrate SQLite data to PostgreSQL (advanced)

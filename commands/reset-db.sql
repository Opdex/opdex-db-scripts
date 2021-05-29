-- Clears tables for a resync.
-- Keeps CRS token and CRS snapshots around

-- ------
-- IMPORTANT - copy the transaction hashes for ODX deployment and Market Deployer Deployment transactions.
--           - Resync requires those and if you wipe them you'll have to go digging or redploy them.
-- ------

SET FOREIGN_KEY_CHECKS = 0;
delete FROM block where Height > 0;
delete FROM market_deployer where Id > 0;
delete FROM address_allowance where Id > 0;
delete FROM address_balance where Id > 0;
delete FROM address_mining where Id > 0;
delete FROM address_staking where Id > 0;
delete FROM market where Id > 0;
delete FROM market_permission where Id > 0;
delete FROM market_snapshot where Id > 0;
delete FROM odx_distribution where Id > 0;
delete FROM odx_mining_governance where Id > 0;
delete from odx_mining_governance_nomination where Id > 0;
delete from odx_vault where Id > 0;
delete from odx_vault_certificate where Id > 0;
delete FROM pool_liquidity where Id > 0;
delete FROM pool_liquidity_snapshot where Id > 0;
delete FROM pool_mining where Id > 0;
delete FROM pool_mining_snapshot where Id > 0;
delete FROM token where Id > 1; -- Greater than 1 to keep CRS around
delete FROM token_snapshot where Id > 1; -- Greater than 1 to keep CRS around
delete FROM transaction where Id > 0;
delete FROM transaction_log where Id > 0;
SET FOREIGN_KEY_CHECKS = 1;
CREATE TABLE users(id BIGSERIAL PRIMARY KEY,name TEXT NOT NULL);
CREATE TABLE listings(id BIGSERIAL PRIMARY KEY,user_id BIGINT REFERENCES users(id),category TEXT NOT NULL,title TEXT NOT NULL,description TEXT,city TEXT,status TEXT DEFAULT 'ACTIVE',created_at TIMESTAMPTZ DEFAULT now());
CREATE TABLE listing_images(id BIGSERIAL PRIMARY KEY,listing_id BIGINT REFERENCES listings(id),url TEXT);
CREATE INDEX idx_listings_city_category_status ON listings(city,category,status);
CREATE INDEX idx_listings_user_created ON listings(user_id,created_at DESC);
-- Tune representative queries with EXPLAIN (ANALYZE, BUFFERS).

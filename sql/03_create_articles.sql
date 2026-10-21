CREATE TABLE IF NOT EXISTS retail.articles
(
    article_id                    String,
    product_code                  String,
    prod_name                     String,
    product_type_no               Int32,
    product_type_name             LowCardinality(String),
    product_group_name            LowCardinality(String),
    graphical_appearance_no       Int32,
    graphical_appearance_name     LowCardinality(String),
    colour_group_code             String,
    colour_group_name             LowCardinality(String),
    perceived_colour_value_id     Int32,
    perceived_colour_value_name   LowCardinality(String),
    perceived_colour_master_id    Int32,
    perceived_colour_master_name  LowCardinality(String),
    department_no                 Int32,
    department_name               LowCardinality(String),
    index_code                    LowCardinality(String),
    index_name                    LowCardinality(String),
    index_group_no                Int32,
    index_group_name              LowCardinality(String),
    section_no                    Int32,
    section_name                  LowCardinality(String),
    garment_group_no              Int32,
    garment_group_name            LowCardinality(String),
    detail_desc                   String
)
ENGINE = MergeTree
ORDER BY article_id;

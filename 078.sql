/*Please add ; after each select statement*/
CREATE PROCEDURE stringsStatistics()
BEGIN
    -- SELECT REGEXP_REPLACE(GROUP_CONCAT(ss.str), '[^a\,]', '') p1 FROM strs ss
    -- SELECT REGEXP_REPLACE(ss.str, '[^a]', '') p1 FROM strs ss
    /*
    SELECT 
    REGEXP_REPLACE(ss.str, '[^a]', '') p2
    ,  CHAR_LENGTH(REGEXP_REPLACE(ss.str, '[^a]', '')) p1 
    FROM strs ss
    */
    
    /*
    SELECT 
        COUNT(*)
    FROM (
        SELECT CHAR_LENGTH(REGEXP_REPLACE(ss.str, '[^a]', '')) size FROM strs ss
    ) d1 
    WHERE d1.size = (SELECT MAX(CHAR_LENGTH(REGEXP_REPLACE(ss.str, '[^a]', ''))) p1 FROM strs ss)
    */
    
    -- SELECT COUNT(*) FROM (SELECT CHAR_LENGTH(REGEXP_REPLACE(ss.str, '[^a]', '')) size FROM strs ss) d1 WHERE d1.size = (SELECT MAX(CHAR_LENGTH(REGEXP_REPLACE(ss.str, '[^a]', ''))) p1 FROM strs ss)
    
    
    -- SELECT FLOOR(LENGTH(REGEXP_REPLACE(GROUP_CONCAT(ss.str), '[^b]', ''))/2) total FROM strs ss
    -- /*
    SELECT
      ll.c letter
    , (SELECT FLOOR(CHAR_LENGTH(REGEXP_REPLACE(GROUP_CONCAT(ss.str), ll.pattern, ''))) FROM strs ss) total
    -- , (SELECT FLOOR(LENGTH(TRIM(REGEXP_REPLACE(GROUP_CONCAT(ss.str), ll.pattern, '')))) FROM strs ss) total
    -- , ll.pattern
    , COUNT(*) occurrence
    , (SELECT MAX(CHAR_LENGTH(REGEXP_REPLACE(ss.str, ll.pattern, ''))) p1 FROM strs ss) max_occurrence
    , (SELECT COUNT(*) FROM (SELECT CHAR_LENGTH(REGEXP_REPLACE(ss.str, ll.pattern, '')) size FROM strs ss) d1 WHERE d1.size = (SELECT MAX(CHAR_LENGTH(REGEXP_REPLACE(ss.str, ll.pattern, ''))) p1 FROM strs ss)) max_occurrence_reached
    -- , LENGTH(SELECT REGEXP_REPLACE(GROUP_CONCAT(ss.str), CONCAT('[^',ll.c,']'), '') FROM strs ss) total
    FROM (
        SELECT 
        l.c
        , CONCAT('[^',l.c,']') pattern
        FROM (
            SELECT CONVERT('a' USING utf8) c UNION
            SELECT CONVERT('b' USING utf8) c UNION
            SELECT CONVERT('c' USING utf8) c UNION
            SELECT CONVERT('d' USING utf8) c UNION
            SELECT CONVERT('e' USING utf8) c UNION
            SELECT CONVERT('f' USING utf8) c UNION
            SELECT CONVERT('g' USING utf8) c UNION
            SELECT CONVERT('h' USING utf8) c UNION
            SELECT CONVERT('i' USING utf8) c UNION
            SELECT CONVERT('j' USING utf8) c UNION
            SELECT CONVERT('k' USING utf8) c UNION
            SELECT CONVERT('l' USING utf8) c UNION
            SELECT CONVERT('m' USING utf8) c UNION
            SELECT CONVERT('n' USING utf8) c UNION
            SELECT CONVERT('o' USING utf8) c UNION
            SELECT CONVERT('p' USING utf8) c UNION
            SELECT CONVERT('q' USING utf8) c UNION
            SELECT CONVERT('r' USING utf8) c UNION
            SELECT CONVERT('s' USING utf8) c UNION
            SELECT CONVERT('t' USING utf8) c UNION
            SELECT CONVERT('u' USING utf8) c UNION
            SELECT CONVERT('v' USING utf8) c UNION
            SELECT CONVERT('w' USING utf8) c UNION
            SELECT CONVERT('x' USING utf8) c UNION
            SELECT CONVERT('y' USING utf8) c UNION
            SELECT CONVERT('z' USING utf8) c 
        ) l INNER JOIN 
        strs s ON  REGEXP_LIKE(s.str, l.c) 
    ) ll
    GROUP BY ll.c
    -- */
    ;
END
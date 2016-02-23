-- Récupérer les rasters SRTM sur http://srtm.csi.cgiar.org/SELECTION/inputCoord.asp

-- Calculer les BBOX de la France (métropole, DOM et COM)

SELECT 'Métropole' AS territoire, '' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE char_length(dpt) < 3 UNION
SELECT 'Guadeloupe' AS territoire, '971' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '971' UNION
SELECT 'Martinique' AS territoire, '972' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '972' UNION
SELECT 'Guyanne' AS territoire, '973' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '973' UNION
SELECT 'La Réunion' AS territoire, '974' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '974' UNION
SELECT 'Saint-Pierre-et-Miquelon' AS territoire, '975' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '975' UNION
SELECT 'Mayotte' AS territoire, '976' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '976' UNION
SELECT 'Walis et Futuna' AS territoire, '986' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '986' UNION
SELECT 'Polynésie' AS territoire, '987' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '987' UNION
SELECT 'Nouvelle Calédonie' AS territoire, '988' AS dept, ST_Extent(geom)::text as bbox FROM communes_201507_4326_10m WHERE dpt = '988'
ORDER BY dept

/* Résultat : 
"Polynésie";"BOX(-154.727292978524 -27.9006277496194,-134.451111109916 -7.85869987567264)"
"Métropole";"BOX(-5.14124076171974 41.3335556861593,9.56009360694229 51.0890012279298)"
"Walis et Futuna";"BOX(-178.181671300735 -14.3621243000687,-176.12478729954 -13.1832441004678)"
"Guadeloupe";"BOX(-63.1533148134486 15.8320177502325,-61.0019534305618 18.1251961770078)"
"La Réunion";"BOX(55.2165259976941 -21.3896307613732,55.8366292267103 -20.8718271541162)"
"Saint-Pierre-et-Miquelon";"BOX(-56.5161294010166 46.7494537594607,-56.0838294667817 47.14420238012)"
"Guyanne";"BOX(-54.6024155448594 2.1110756518069,-51.619065827085 5.74815560259716)"
"Martinique";"BOX(-61.2290349033092 14.3886458772931,-60.8096831852153 14.8787232413145)"
"Mayotte";"BOX(163.569695640276 -22.7114986968281,168.133657575038 -19.5250885246127)"
"Mayotte";"BOX(45.0183408427421 -13.0054169866475,45.2999850886235 -12.6365901636169)"
*/

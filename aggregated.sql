SELECT
  countMerge (TotalCount) AS COUNT,
  formatDateTime (ExecutedAtInIST, '%Y-%m-%d') AS DAY
FROM
  eve_services_tat_aggregated_mv
WHERE
  ExecutedAtInIST >= {{start_date}}
  AND ExecutedAtInIST <= {{end_date}}
  AND {{Status}}
  AND {{TaskType}}
GROUP BY
  DAY
ORDER BY
  DAY DESC
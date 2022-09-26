SELECT substr(n.cpf, 1, 3) || '.' ||
    substr(n.cpf, 4, 3) || '.' ||
    substr(n.cpf, 7, 3) || '-' ||
    substr(n.cpf, 10, 2) AS cpf
FROM natural_person as n
INNER JOIN customers as c
    ON n.id_customers = c.id
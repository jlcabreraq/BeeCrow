select e.cpf, e.enome, d.dnome
from empregados as e
inner join departamentos as d
    on e.dnumero = d.dnumero
LEFT JOIN trabalha as t
    on e.cpf = t.cpf_emp
where t.cpf_emp is NULL
order by e.cpf
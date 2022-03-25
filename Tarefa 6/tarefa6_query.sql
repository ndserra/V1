select p.nome, c.email, e.endereco from pessoas p, contatos c, encerecos e
where true
and p.id = c.id_pessoa
and (p.id = e.id_pessoa or e.endereco is null)
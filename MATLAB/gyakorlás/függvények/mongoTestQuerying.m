function documents = mongoTestQuerying(server, port, dbname, collname)

conn = mongoTestOpening(server, port, dbname);
documents = find(conn, collname);
mongoTestClosing(conn);

end


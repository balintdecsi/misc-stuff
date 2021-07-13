function conn = mongoTestOpening(server, port, dbname)

conn = mongo(server, port, dbname);
% open = isopen(conn);

end
function mongoTestInsertion(conn, collname, doc)

if ~isopen(conn)
    error('Desired connection is not open, please first open it!');
end
% collection = input('Which collection do you want to insert into? ');
if sum([conn.CollectionNames == collname]) == 0
    createCollection(conn, collname);
end
% doc.path = input('Insert file path: ');
% doc.size = input('Insert file size: ');

insert(conn, collname, doc);

end
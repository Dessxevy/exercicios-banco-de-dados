use('orion_nosql');

db.posts.insertOne({
    titulo: "Introdução ao MongoDB",
    autor: "Andressa",
    conteudo: "MongoDB é um banco de dados NoSQL que armazena informações em documentos."
});

db.posts.insertOne({
    titulo: "Conhecendo bancos NoSQL",
    autor: "Andressa",
    conteudo: "Os bancos NoSQL oferecem diferentes formas de armazenar e consultar dados.",
    tags: ["nosql", "mongodb", "banco de dados"]
});

db.posts.find({});
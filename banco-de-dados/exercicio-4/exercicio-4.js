use('orion_nosql');

db.posts.updateOne(
    { titulo: "Conhecendo bancos NoSQL" },
    {
        $set: {
            comentarios: [
                { autor: "Carlos", texto: "Ótimo conteúdo!" },
                { autor: "Marina", texto: "Muito esclarecedor!" }
            ]
        }
    }
);

db.posts.find({ tags: "nosql" });

db.posts.find({ autor: "Andressa" });
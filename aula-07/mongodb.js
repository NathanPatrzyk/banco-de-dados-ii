// FIND:

db.nomeDaCollection.find();

db.nomeDaCollection.find({campo1: valor1, campo2: valor2,...});

db.nomeDaCollection.find(
    {campo1: valor1, campo2: valor2,...},
    {campoParaExibir1: exibeOuNaoExibe, campoParaExibir2: exibeOuNaoExibe,...}
);

db.nomeDaCollection.findOne();

// INSERT:

db.nomeDaCollection.insert({campo1: valor1, campo2: valor2,...});

db.nomeDaCollection.insert({_id: valorDoId, campo1: valor1,...});

// UPDATE:

db.nomeDaCollection.update(
    {criterioDeBusca1: valor1,...},
    {campoParaAtualizar1: novoValor1,...}
);

db.nomeDaCollection.update(
    {criterioDeBusca1: valor1,...},
    {$set:{campoParaAtualizar1: novoValor1,...}}
);

db.nomeDaCollection.update(
    {criterioDeBusca1: valor1,...},
    {$set:{campoParaAtualizar1: novoValor1,...}},
    {multi: 0or1(falseOrTrue)}
);

db.nomeDaCollection.update(
    {criterioDeBusca1: valor1,...},
    {$set:{campoParaAtualizar1: novoValor1,...}},
    {upsert: 0or1(falseOrTrue)}
);

// REMOVE:

db.nomeDaCollection.remove({criterioDeBusca1: valor1,...});

db.nomeDaCollection.remove({});

// COLLECTIONS:

db.nomeDaCollection.insert({campo1: valor1,...});

db.nomeDaCollection.drop();
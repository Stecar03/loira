json.extract! utente, :id, :cognome, :nome, :indirizzo, :numero, :annotazioni, :created_at, :updated_at
json.url utente_url(utente, format: :json)

class Publication < ApplicationRecord
  mount_uploader :cover, CoverUploader
  validates :title, presence: { message: "La publicación debe tener titulo."}
  validates :title, length: {minimum: 12, maximum: 150, too_long: "Titulo muy largo (%{count} carácteres máximo).", too_short: "Titulo muy corto (%{count} carácteres mínimo)."}
  validates :body, presence: {message: "La publicación debe tener cuerpo."}
  validates :body,  length:{minimum: 50, too_short:"Cuerpo muy corto (%{count} carácteres mínimo)"}
  validates :cover, presence: {message: "La publicación debe tener una portada."};
end

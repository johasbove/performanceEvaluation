# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

preset_family_goals = [
  { family_name: 'EJECUTIVO DE PERSONAS', area: 'ZONA SUR', world: 'SANTANDER', position: 'EJECUTIVO DE PERSONAS' },
  { family_name: 'AGENTE', area: 'ZONA NORTE', world: 'BANCO Y FILIALES', position: 'AGENTE I' },
  { family_name: 'JEFE OPERACIONES', area: 'ZONA CENTRO', world: 'BANAFE', position: 'AGENTE II' },
  { family_name: 'EJECUTIVO SELECT', area: 'ZONA SUR', world: 'BANCO Y FILIALES', position: 'EJECUTIVO SELECT' },
  { family_name: 'GESTOR COMERCIAL SENIOR', area: 'ZONA NORTE', world: 'BANCO Y FILIALES', position: 'GESTOR COMERCIAL SENIOR' },
  { family_name: 'EJECUTIVO PYME', area: 'ZONA CENTRO', world: 'BANCO Y FILIALES', position: 'EJECUTIVO PYME' }
]

FamilyGoal.create(preset_family_goals)

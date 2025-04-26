-- Création de la base de données (optionnel)
CREATE DATABASE IF NOT EXISTS ihm_db;
USE ihm_db;

-- Création de la table QuestionsErgonomie
CREATE TABLE IF NOT EXISTS QuestionsErgonomie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255),
    corps_question TEXT,
    reponse TEXT
);

-- Insertion des données issues du fichier XML
INSERT INTO QuestionsErgonomie (titre, corps_question, reponse)
VALUES 
('Définition de l\'ergonomie', 'Qu\'est-ce que l\'ergonomie des interfaces ?', 'L\'ergonomie vise à rendre une interface intuitive, facile à utiliser et adaptée aux besoins des utilisateurs.'),
('Règles de base', 'Quelles sont les règles d\'ergonomie à respecter ?', 'Les principales règles incluent la visibilité, la cohérence, la simplicité et la rétroaction immédiate.'),
('Importance des couleurs', 'Pourquoi le choix des couleurs est-il important ?', 'Les couleurs influencent la perception et doivent être utilisées pour guider l\'utilisateur sans surcharger l\'interface.'),
('Feedback utilisateur', 'Que signifie un bon feedback utilisateur ?', 'Le système doit informer clairement l\'utilisateur de toute action, changement ou erreur.'),
('Constance', 'Pourquoi la constance est-elle importante ?', 'La constance permet aux utilisateurs de prédire les résultats de leurs actions, ce qui réduit leur charge cognitive.'),
('Temps de réponse', 'Quel est le temps de réponse acceptable ?', 'Un bon temps de réponse est inférieur à 1 seconde pour garder l\'attention de l\'utilisateur.'),
('Erreurs utilisateurs', 'Comment gérer les erreurs utilisateurs ?', 'Les messages d\'erreur doivent être clairs, précis et proposer des solutions.'),
('Affordance', 'Qu\'est-ce que l\'affordance ?', 'L\'affordance indique par la forme d\'un élément comment il doit être utilisé. Par exemple, un bouton semble "cliquable".'),
('Navigation intuitive', 'Comment assurer une navigation intuitive ?', 'Organiser les menus de manière logique, avec des libellés explicites et des parcours utilisateur simples.'),
('Adaptabilité', 'Pourquoi l\'adaptabilité est-elle essentielle ?', 'Pour répondre aux différents profils utilisateurs et aux différents appareils (responsive design).');

-- Requête pour sélectionner toutes les questions où on parle du temps de réponse
SELECT * FROM QuestionsErgonomie
WHERE corps_question LIKE '%temps de réponse%';

-- Exemple de récupération de toutes les questions
SELECT * FROM QuestionsErgonomie;

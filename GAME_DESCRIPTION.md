# Knowledge Race Academy

## Game Overview

Knowledge Race Academy is a 3D Arabic educational racing game that turns language learning into an active driving experience. Students do not simply answer questions from a static quiz screen. They drive through a futuristic learning city, approach glowing answer gates, and choose the correct lane to advance through each lesson.

The game is designed for Arabic language learners and combines curriculum-based practice, arcade racing, immediate feedback, progression, and visual rewards in one continuous experience.

## Core Gameplay

Each lesson is a complete racing challenge containing 50 questions. The student starts at the beginning of a neon city route and answers one question at every checkpoint. Each answer is represented by a colored gate on the road. Selecting an answer moves the car toward the corresponding gate, creates a visible steering motion, changes the race pace, and then advances the student to the next question.

The road, city scenery, speed streaks, and answer gates move continuously toward the player. The car stays in a leading position while the world scrolls around it, creating a clear sense of forward motion. The environment and gates use one shared distance-based motion system so that the complete route remains synchronized.

## Lesson Structure

Every lesson contains five difficulty tiers. Questions 1–10 are Easy, questions 11–20 are Above Easy, questions 21–30 are Medium, questions 31–40 are Hard, and questions 41–50 are Very Hard. Correct answers increase the score and build the student’s streak. Incorrect answers reset the streak and provide corrective feedback before the next checkpoint.

The current curriculum includes 17 Arabic language lessons:

1. Final Hamza
2. Medial Hamza
3. Parts of Speech
4. Types of Sentences
5. Hamzat al-Wasl and Hamzat al-Qat’
6. Ta’ Marbuta and Open Ta’
7. Words with Deleted Alif
8. The Nominal Sentence
9. Mubtada’ and Khabar with Primary Inflection Marks
10. The Verbal Sentence
11. The Subject with Primary Nominative Marks
12. The Direct Object with Primary Accusative Marks
13. The Subject with Secondary Inflection Marks
14. The Direct Object with Secondary Accusative Marks
15. The Genitive Noun after a Preposition
16. Correcting Spelling Mistakes
17. Desertification and Its Environmental Impact

## Visual Direction

The game follows an arcade-cinematic visual direction called “The Luminous Launch City.” The scene is built around a deep blue night atmosphere, vivid neon accents, a glowing road, colorful answer gates, illuminated buildings, stylized trees, roadside energy strips, and a futuristic educational city skyline.

The uploaded 3D car asset, `cartoon_sports_car.glb`, is used as the player vehicle. It replaces the former procedural car whenever the asset loads successfully. The model is scaled to fit the road, rotated to face the racing direction, and placed inside the game’s existing movement rig. Embedded animation groups are started automatically when available. A procedural fallback remains available so that the lesson can still open if the external model asset cannot be loaded.

## Player Controls

Students can choose an answer by clicking one of the three answer gates or answer buttons. Keyboard players can use A or the Left Arrow for the first lane, S or the Down Arrow for the middle lane, and D or the Right Arrow for the third lane. The car visibly steers toward the selected lane, leans during the turn, changes its acceleration profile, and continues toward the next checkpoint.

## Progression and Feedback

The game tracks the current score, answer streak, current difficulty tier, completed lessons, and lesson progress. Completed lessons are stored locally in the browser so the student can return to the lesson map and see which routes have been finished. The end-of-lesson screen displays the student’s final score, achievement rank, and options to replay the lesson or return to the lesson map.

## Technical Foundation

The game is implemented as a React and Babylon.js web experience. Babylon.js renders the 3D scene, including the road, gates, buildings, trees, lighting, speed streaks, camera, player vehicle, and continuous world motion. The uploaded GLB vehicle is served from the project’s persistent web storage path:

`/manus-storage/cartoon_sports_car_9684ca1e.glb`

The environment uses a single shared world-scroll value for road chunks, city objects, and answer gates. Track sections are recycled using deterministic wrap-around math, preventing visible gaps, static sections, or mismatched gate speed. The UI is built in Arabic with right-to-left layout, responsive sizing, keyboard support, mobile adaptations, and a compact question panel designed to preserve the visibility of the racing scene.

## Educational Purpose

Knowledge Race Academy is intended to make Arabic grammar and spelling practice more active, memorable, and motivating. The racing metaphor turns each question into a decision on the road, while the difficulty tiers provide a gradual learning curve. The game can later be expanded with teacher dashboards, student accounts, audio pronunciation, adaptive question selection, detailed explanations, badges, and classroom progress reports.

## Product Positioning

Knowledge Race Academy is not a conventional quiz application. It is a curriculum-driven Arabic learning game that combines structured assessment with an animated 3D racing world. Its central promise is simple: students learn by making decisions, and every correct decision moves them closer to the finish line.

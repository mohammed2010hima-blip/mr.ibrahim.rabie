# البنية المقترحة

```text
client/src/
├── components/
│   └── GameCanvas.tsx        # إطار React واللوحة الكاملة
├── game/
│   ├── scene.ts              # createGameScene ومشهد Babylon
│   ├── RaceWorld.ts          # الطريق والبيئة والإضاءة
│   ├── CarController.ts      # تحريك السيارة وتحديد البوابة
│   └── types.ts              # أنواع التعامل مع المشهد
├── data/
│   └── lessons.ts            # الدروس والأسئلة وقواعد التحقق
├── pages/
│   └── Home.tsx              # طبقات واجهة الدروس واللعب
├── App.tsx
└── index.css
```

تحتفظ React بحالة الدرس والسؤال والنقاط والطبقات النصية فقط. أما Babylon.js فيدير المشهد، السيارة، البوابات، الإضاءة، والكاميرا. لا تستورد طبقات اللعب React حتى يظل المشهد قابلًا للصيانة وإعادة التشغيل.

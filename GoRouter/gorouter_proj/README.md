# 🛣️ goruter_concept – GoRouter with Clean Architecture in Flutter

## ❌ Error Faced

```
Could not write file to *.spirv
```

### ✅ Resolution

- The file path was **too long** (Windows limitation).
- ✅ **Fix:** Move project to a **shorter path**, e.g. `C:\FlutterProjects\gorouter_concept`.

---

## 📁 Basic Folder Structure for GoRouter (Clean Architecture)

```
lib/
└── project/
    └── routes/
        ├── app_route_config.dart
        └── app_route_constants.dart
```

---

## 🔑 Key GoRouter Properties

| Property | Purpose                          | Usage Example                   |
|----------|----------------------------------|----------------------------------|
| `path`   | Defines the URL pattern          | `'/about'`                      |
| `name`   | Unique identifier for the route  | `'aboutRoute'`                 |
|          | Helps with named navigation      | `context.goNamed('aboutRoute')`|

---

## 🧭 Parameters

- **Named Parameters**: Can be passed via:
  - `pathParams`
  - Object-based arguments

---

## 🔁 Redirect Concept

- GoRouter supports **redirection logic** for:
  - Auth guards
  - Conditional routing (e.g., onboarding complete)

---

## 📺 Reference Video

[YouTube – GoRouter Concept ](https://www.youtube.com/watch?v=QwlrHjBYQ2M)
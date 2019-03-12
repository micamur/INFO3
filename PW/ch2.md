**Slides** : http://slides.com/fingerproof/polytech-2019/live

**Mail** : sebastien.pittion@viseo.com -> nom, prénom, cursus, niveau en dev Web/Java

**Slack** : fingerproof-polytech.slack.com

**Aide** : MDN (ou webplatform)

**Technos** : Node.js + npm, ES6, TypeScript, Angular (HTML amélioré), Ionic (bibliothèque de composants Angular notamment pour mobile)

**Versionning** : majeur.mineur.patch

```
Node :

"dependencies": {}
"devDependencies": {}
```

**TypeScript** :

- `const` pour variables constantes, `let` sinon
- `;` en fin de ligne
- `myObject = {prop1: true, p2: 3, p3: [false, 1, '2', []], 'p 4': {}}`
- `console.log(myObject)` pour afficher un objet
- Fonction : `function myFunction(a, b) { return a + b; }`
- Fonction : `const myFunctionBis(a, b) => a + b;`
- Classes :

  ```ts
  class MyClass {
    static prop1 = myFunction;
    prop2 = null;
    prop3 = undefined;
    value = 42

    constructor() { ... }
    add(a, b) { return this.prop2(a, b); }

    method1() { return this.value; }
    method2 = () => { return this.value; }
  }

  const instance = new MyClass();
  instance.method1()); // 42
  instance.method2()); // 42
  const { method1, method2 } = instance;
  method1(): // error
  method2(): // 42
  ```

- Promesses :

  ```ts
  const promise1 = Promise.resolve();
  const promise2 = Promise.reject();

  promise1
    .then()) => console.log('ok1'))
    .catch()) => console.log('error1'))
    .finally()) => console.log('finally1'))

  console.log('after promise1');

  promise2
    .then()) => console.log('ok2'))
    .catch()) => console.log('error2'))
    .finally()) => console.log('finally2'))

  console.log('after promise2');

  // after promise1, after promise2, ok1, finally1, error2, finally2
  ```

- Observable : plus puissant que les promesses (event, click, cancel, etc.)

```ts
// model.ts

export interface Model {
  id: number;
  name: string;
  isSelected: boolean;
  imageUrl: string;
  subModel: Model[];
}
```

Installations à faire avant le prochain TP :

- Git + créer un utilisateur
- NodeJS
- Visual Studio Code
  - TSLint
  - Angular Language Service
- Google Chrome
- SourceTree (Windows) / GitKraken (Linux) ?
- `$ which git`
- `$ npm install --global ionic`
- `$ ionic start tp-pw blank` à faire après avoir installé Git + user !
- Créer répo en public sur GitHub ou GitLab









.

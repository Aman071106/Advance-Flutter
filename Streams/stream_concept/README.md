Key Differences Between setState and StreamBuilder
Feature	setState	StreamBuilder
How it works	Calls setState to rebuild the widget	Listens to a Stream and updates when new data arrives
Triggers UI updates	Updates the whole widget tree where setState is called	Only updates the widget that is listening to the stream
Use case	Ideal for small UI updates	Ideal for real-time data updates (like Firebase, WebSockets)
Efficiency	Can be inefficient if used frequently	More optimized as only listening widgets rebuild
Persistence	Data resets when the widget is rebuilt	Stream can persist even if widgets rebuild
Async Handling	Not built for handling async events	Handles asynchronous events efficiently
Why Use Both in Your Code?
In your example, you used StreamBuilder to display the text and setState to add new values to the stream.

How Your Code Works:
When the button is pressed, streamController.add(controller.text); sends new data into the stream.

The StreamBuilder listens to the stream and updates the Text widget whenever new data arrives.

setState is used, but it’s not necessary here. The stream already takes care of UI updates.

When to Use What?
Use setState for local, one-time UI changes.
✅ Example: Toggling a switch, changing a button color.

Use StreamBuilder for continuous or real-time updates.
✅ Example: Listening to Firebase Firestore, WebSocket data, or handling async operations.
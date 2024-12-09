---
epoch: 1733181458202
modelKey: gpt-4o-mini|openai
tags:
  - copilot-conversation
---

**user**: Hi! I'll be working with a WordPress site to add a contact form. Currently, it uses an embedded Google Form, but the client wants to have results stored in a custom (existing) database, rather than a Google Sheet.
[Timestamp: 2024/12/02 23:17:38]

**ai**: To create a contact form on your WordPress site that stores results in a custom database, you'll need to follow these general steps:

1. **Choose a Form Plugin**: Select a WordPress form plugin that allows for custom database integration. Popular options include:
   - **Gravity Forms**: Offers advanced features and can be extended to save data to a custom database.
   - **WPForms**: User-friendly and can be customized for database storage.
   - **Contact Form 7**: While basic, it can be extended with additional plugins for database storage.

2. **Create the Form**: Use the chosen plugin to create your contact form. Add the necessary fields (name, email, message, etc.) according to your client's requirements.

3. **Custom Database Integration**:
   - If you're using a plugin like Gravity Forms, you can use hooks and filters to save form submissions directly to your custom database.
   - For WPForms, you might need to use the WPForms API to handle the data submission and insert it into your custom database.
   - If using Contact Form 7, you can use the "Flamingo" plugin to store submissions, or write custom code to handle the database insertion.

4. **Write Custom Code (if necessary)**: If the plugin does not support direct database integration, you may need to write custom PHP code. This involves:
   - Hooking into the form submission process.
   - Using `global $wpdb;` to access the WordPress database functions.
   - Writing an SQL query to insert the form data into your custom database.

5. **Test the Form**: After setting everything up, thoroughly test the form to ensure that submissions are correctly stored in the custom database.

6. **Security Considerations**: Ensure that you validate and sanitize user inputs to prevent SQL injection and other security vulnerabilities.

If you need more specific guidance on any of these steps or have questions about a particular plugin, feel free to ask!
[Timestamp: 2024/12/02 23:17:43]
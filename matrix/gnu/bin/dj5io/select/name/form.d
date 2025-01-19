module name.form;

import std.stdio;
import std.array;
import std.string;

struct FormField {
    string label;
    string value;
}

struct Form {
    string action;
    string method;
    FormField[] fields;
    string[] hiddenFields;
}

Form createForm(string action, string method) {
    return Form(action, method, [], []);
}

void addField(Form form, string label, string value) {
    form.fields ~= FormField(label, value);
}

void addHiddenField(Form form, string name, string value) {
    form.hiddenFields ~= format("%s=%s", name, value);
}

string generateFormHTML(Form form) {
    string html = format("<form action='%s' method='%s'>\n", form.action, form.method);
    foreach (field; form.fields) {
        html ~= format("<label for='%s'>%s:</label>\n", field.label, field.label);
        html ~= format("<input type='text' id='%s' name='%s' value='%s' />\n", field.label, field.label, field.value);
    }
    html ~= "</form>";
    return html;
}

void main() {
    Form form = createForm("/submit", "POST");
    addField(form, "Name", "John Doe");
    addField(form, "Email", "johndoe@example.com");
    string formHTML = generateFormHTML(form);
    writeln(formHTML);
}



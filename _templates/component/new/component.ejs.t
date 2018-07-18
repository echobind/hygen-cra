---
to: src/components/<%= h.inflection.classify(name) %>/<%= h.inflection.classify(name) %>.js
---
<% formattedName = h.inflection.classify(name) -%>
<% if(componentType === 'functional'){ -%>
import React from 'react';
import './styles.css';

export default function() {
    return (
      <div className="<%= h.inflection.dasherize(name) %>">
        <h1>Hola! <%= formattedName %> Created!</h1>
      </div>
    );
}

<% } -%>
<% if(componentType === 'stateful'){ -%>
import React, { Component } from 'react';
import './styles.css';

export default class <%= formattedName %> extends Component {
  state = {}

  render() {
    return (
      <div className="<%= h.inflection.dasherize(name) %>">
        <h1>Hola! <%= formattedName %> Created!</h1>
      </div>
    );
  }
}
<% } -%>
---
to: src/components/<%= h.inflection.classify(name) %>/stories.js
---
<% formattedName = h.inflection.classify(name) -%>
import React from 'react';
import <%= formattedName %> from './index';

import { storiesOf } from '@storybook/react';

storiesOf('<%= formattedName %>', module)
  .add('Default', () => <<%= formattedName %> />)
  .add('Something else', () => <<%= formattedName %> />);

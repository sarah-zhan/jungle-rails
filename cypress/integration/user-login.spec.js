describe('Sign Up', () => {

  it('visit the main page', () => {
    cy.visit('/');
  });

  it('goes to sign up page', () => {
    cy.get('.navbar-nav > :nth-child(1) > .btn').click();
    cy.contains('Sign up');
  });

  it('fill in first name', () => {
    cy.get('#user_first_name').type('Sarah', { force: true });
  });

  it('fill in last name', () => {
    cy.get('#user_last_name').type('Haynes', { force: true });
  });

  it('fill in email', () => {
    cy.get('#user_email').type('sarahhaynes@gmail.com', { force: true });
  });

  it('fill in password', () => {
    cy.get('#user_password').type('sarahhaynes', { force: true });
  });

  it('fill in password confirmation', () => {
    cy.get('#user_password_confirmation').type('sarahhaynes', { force: true });
  });

  it('click sign up button', () => {
    cy.get(':nth-child(6) > .btn').click();
  });

});

describe('Sign in', () => {

  it('goes to sign in page', () => {
    cy.get(':nth-child(2) > .btn').click();
    cy.contains('Sign In');
  });

  it('fill in email', () => {
    cy.get('#email').type('sarahhaynes@gmail.com', { force: true });
  });

  it('fill in password', () => {
    cy.get('#password').type('sarahhaynes', { force: true });
  });

  it('click sign in button', () => {
    cy.get(':nth-child(3) > .btn').click();
    cy.contains('Logged in successfully');
  });

});
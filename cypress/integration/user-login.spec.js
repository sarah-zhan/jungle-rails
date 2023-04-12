describe('Sign Up', () => {
  beforeEach(() => {
    cy.visit('/');
  });


  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it('There are 2 products on the page', () => {
    cy.get('.products article').should('have.length', 2);
  });

  it('goes to sign up page', () => {
    cy.get('.navbar-nav > :nth-child(1) > .btn').click();
    cy.get('main.container');
  });

  it('fill in first name', () => {
    cy.get('#user_first_name');
  });

});
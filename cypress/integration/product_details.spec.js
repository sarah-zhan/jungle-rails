describe('Navigation', () => {
  beforeEach(() => {
    cy.visit('/');
  });


  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it('There are 2 products on the page', () => {
    cy.get('.products article').should('have.length', 2);
  });

  it('has a category Evergreen', () => {
    cy.get('.me-auto > .dropdown > #navbarDropdownAdmin').click();
  });

  it('has a plant Scented Blade', () => {
    cy.get(':nth-child(1) > a > img').click();
    cy.get('.quantity > :nth-child(1)').contains('stock');
  });

});
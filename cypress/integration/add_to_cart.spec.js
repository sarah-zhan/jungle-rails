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

  it('go to category Evergreen', () => {
    cy.get('.me-auto > .dropdown > #navbarDropdownAdmin').click();
  });

  it('add Scented Blade to the cart', () => {
    cy.get('.button_to > .btn').contains('Add').click();
  });

  it('the count of the cart becomes 1', () => {
    cy.get('.end-0 > .nav-link').contains('1');  //dont know why it becomes 0
  });

});
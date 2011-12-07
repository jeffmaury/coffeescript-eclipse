package csep.tests

import org.junit.Test

class FunctionCallTest extends ParserTestBase {
	
	@Test
	def void testProperty() {
		ok('foo.bar')
		ok('"text".len')
		ok('a.size + b.getSize()')
	}
	
	@Test
	def void testCallSimple() {
		ok('foo()')
		ok('list.pop()')
		ok('"text".trim()')
		ok('list.pop().remove()')
	}
}
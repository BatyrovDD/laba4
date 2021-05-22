package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="Calc", urlPatterns="/JavaCalc") //���������� �������� � URL
public class Calc extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
		 
		request.getRequestDispatcher("/Results.jsp").forward(request, response);
	}
	private static class RequestCalc {
		private final String first_calc;
		private final String second_calc;
		private final String third_calc;
		private float result;
						
		private RequestCalc (String first, String second, String third) {
			this.first_calc = first;
			this.second_calc = second;
			this.third_calc = third;
			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first"),
			request.getParameter("second"),
			request.getParameter("third"));
			}
				
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
			request.setAttribute("first_result", first_calc);
			request.setAttribute("second_result", second_calc);
			request.setAttribute("third_result", third_calc);
			float first_try;
			float second_try;
			float third_try;
			try { 
			first_try=Float.parseFloat(first_calc);
			second_try=Float.parseFloat(second_calc);
			third_try=Float.parseFloat(third_calc);
			}
			catch (NumberFormatException e) {
				first_try=0;
				second_try=0;
				third_try=0;
			}
			
			result=first_try*second_try*third_try;
			request.setAttribute("result", result);
		}
		
	}
}

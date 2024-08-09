import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/classe")
public class classe extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Names = "";

        // Retrieve the cookie value if it exists
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("Names".equals(cookie.getName())) {
                	Names = cookie.getValue();
                    break;
                }
            }
        }

        // Generate the HTML response
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html lang='en'>");
        out.println("<head ><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'><title></title></head>");
        out.println("<body style='background:black;color:white'>");
        out.println("<h1>Enter your Username </h1>");
        out.println("<form action='classe' method='POST'><hr>");
        out.println("<label for='userInput'>Username:</label><br><br>");
        out.println("<input type='text' id='userInput' style='width:400px;height:50px;text-align:center:font-size:20px' name='userInput' value='" + Names + "'><br>");
        out.println("<button style='width:100px;height:40px;;font-size:10px;background-color:blue;color:white;border:none' type='submit'>Submit</button>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userInput = request.getParameter("userInput");

        // Store the input in a cookie
        Cookie cookie = new Cookie("usernameOrEmail", userInput);
        cookie.setMaxAge(60 * 60 * 24); // 1 day
        response.addCookie(cookie);

        // Redirect back to the form page (GET request)
        response.sendRedirect("index.jsp");
    }
}



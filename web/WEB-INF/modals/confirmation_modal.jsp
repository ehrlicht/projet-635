<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="added">Livre ajouté</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-left">
                <p>Le livre a été ajouté à la base de données avec succès.</p>
            </div>
            <div class="modal-footer">
                <form method="get" action="<%=request.getContextPath()%>/showBooks">
                    <button type="submit" class="btn btn-secondary" data-dismiss="modal">Ok</button>
                </form>
            </div>
        </div>
    </div>
</div>
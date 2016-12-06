using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using DalRis;
using System.Data;
using System.Text;

namespace RIS_Publico
{
    public partial class InformeEstudio : System.Web.UI.Page
    {
        // -----------------------------------------------------------------------------------------------------------

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            cargarDatos();
        }

        // -----------------------------------------------------------------------------------------------------------

        public void cargarDatos()
        {
            RisEstudio oEstudio = new RisEstudio(int.Parse(Request["idEstudio"].ToString().Trim()));

            Label1.Text = "<strong>Nro. de inscripcion: </strong>" + oEstudio.NroOrden.ToString() + "." + oEstudio.Enmienda.ToString() + "." + oEstudio.Anio.ToString();

            // Investigadores
            DataTable dtInvestigadores = new DataTable();
            dtInvestigadores = SPs.RisCargarListaInvestigadores(int.Parse(Request["idEstudio"].ToString().Trim())).GetDataSet().Tables[0];
            gvListaInvestigadores.DataSource = dtInvestigadores;
            gvListaInvestigadores.DataBind();
            
            Label5.Text = "<strong>Título de la investigación: </strong>" + oEstudio.TituloInvestigacion.ToString();
            Label6.Text = "<strong>Nro. de registro nacional: </strong>" + oEstudio.NroRegistroNacional.ToString();
            Label7.Text = "<strong>Tipo de estudio: </strong>" + oEstudio.TipoEstudio.ToString();
            Label8.Text = "<strong>Nro. de expediente: </strong>" + oEstudio.NroExpediente.ToString();
            Label9.Text = "<strong>Nombre abreviado: </strong>" + oEstudio.NombreAbreviado.ToString();
            Label10.Text = "<strong>Drogas en estudio: </strong>" + oEstudio.Drogas.ToString();

            // Consentimientos
            DataTable dtConsentimientos = new DataTable();
            dtConsentimientos = SPs.RisCargarListaConcentimientos(int.Parse(Request["idEstudio"].ToString().Trim())).GetDataSet().Tables[0];
            gvListaConsentimiento.DataSource = dtConsentimientos;
            gvListaConsentimiento.DataBind();

            // Enmiendas
            DataTable dtEnmiendas = new DataTable();
            dtEnmiendas = SPs.RisCargarListaEnmiendas(int.Parse(Request["idEstudio"].ToString().Trim())).GetDataSet().Tables[0];
            gvListaEnmiendas.DataSource = dtEnmiendas;
            gvListaEnmiendas.DataBind();

            // Institución de referencia
            Label14.Text = "<strong>Nombre: </strong>" + oEstudio.NombreIntitucionAfiliacion.ToString();
            Label15.Text = "<strong>Referente: </strong>" + oEstudio.ReferenteInstitucionAfiliacion.ToString();
            Label16.Text = "<strong>Teléfono: </strong>" + oEstudio.TelefonoInstitucionAfiliacion.ToString();
            Label17.Text = "<strong>Domicilio: </strong>" + oEstudio.DomicilioInstitucionAfiliacion.ToString();
            Label18.Text = "<strong>E-mail: </strong>" + oEstudio.EmailInstitucionAfiliacion.ToString();

            // Lugares de realización
            DataTable dtLugaresDeRealizacion = new DataTable();
            dtLugaresDeRealizacion = SPs.RisCargarListaLugaresRealizacion(int.Parse(Request["idEstudio"].ToString().Trim())).GetDataSet().Tables[0];
            gvListaLugaresDeRealizacion.DataSource = dtLugaresDeRealizacion;
            gvListaLugaresDeRealizacion.DataBind();

            // Seguro de daños
            DataTable dtSeguroDanios = new DataTable();
            dtSeguroDanios = SPs.RisCargarListaAseguradoras(int.Parse(Request["idEstudio"].ToString().Trim())).GetDataSet().Tables[0];
            gvListaAseguradora.DataSource = dtSeguroDanios;
            gvListaAseguradora.DataBind();
            
            // Comité de ética
            DataTable dtComiteEtica = new DataTable();
            dtComiteEtica = SPs.RisCargarListaComiteEtica(int.Parse(Request["idEstudio"].ToString().Trim())).GetDataSet().Tables[0];
            gvListaComiteEtica.DataSource = dtComiteEtica;
            gvListaComiteEtica.DataBind();

            // Informe de la comisión de investigaciones biomédicas en seres humanos (CAIBSH)

            // Aprobado
            Label30.Text = "<strong>Fecha Aprobado: </strong>" + oEstudio.FechaAprobadoCAIBSH.ToString();

            DataTable dtListaInformeAprobado = new DataTable();
            dtListaInformeAprobado = SPs.RisCargarListaInformeAprobado(int.Parse(Request["idEstudio"].ToString().Trim())).GetDataSet().Tables[0];
            gvListaInformeAprobado.DataSource = dtListaInformeAprobado;
            gvListaInformeAprobado.DataBind();
        }

        // -----------------------------------------------------------------------------------------------------------
    }
}
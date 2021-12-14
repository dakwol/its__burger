using System;
using System.Collections.Generic;
using System.Linq;
using GameStore.Models;
using GameStore.Models.Repository;
using GameStore.Pages.Helpers;
using System.Web.Routing;


namespace GameStore.Pages
{
    public partial class CartView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Repository repository = new Repository();
                int gameId;
                if(int.TryParse(Request.Form["remove"],out gameId))
                {
                    Game gameToRemove = repository.Games
                        .Where(p => p.GameId == gameId)
                        .FirstOrDefault();
                    if (gameToRemove != null)
                    {
                        SessionHelper.GetCart(Session).RemoveLine(gameToRemove);
                    }                     
                }
            }
        }

        protected void addPage_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Repository repository = new Repository();
                int selectedGameId;
                if (int.TryParse(Request.Form["add"], out selectedGameId))
                {
                    Game selectedGame = repository.Games
                        .Where(p => p.GameId == selectedGameId)
                        .FirstOrDefault();
                    if (selectedGame != null)
                    {
                        SessionHelper.GetCart(Session).AddItem(selectedGame, 1);
                    }
                }
            }
        }

        public string CheckoutUrl
        {
            get
            {
                return RouteTable.Routes.GetVirtualPath(null, "checkout",
                    null).VirtualPath;
            }
        }

        public IEnumerable<CartLine> GetCartLines()
        {
            return SessionHelper.GetCart(Session).Lines;
        }

        public decimal CartTotal
        {
            get
            {
                return SessionHelper.GetCart(Session).ComputeTotalValue();
            }
        }

        public string ReturnUrl
        {
            get
            {
                return SessionHelper.Get<string>(Session, SessionKey.RETURN_URL);
            }
        }
    }
}
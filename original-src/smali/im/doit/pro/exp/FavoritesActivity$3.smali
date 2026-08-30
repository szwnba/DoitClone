.class Lim/doit/pro/exp/FavoritesActivity$3;
.super Ljava/lang/Object;
.source "FavoritesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/FavoritesActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/exp/FavoritesActivity;

.field final synthetic val$f:Lim/doit/pro/exp/FavoritesActivity$Fav;


# direct methods
.method constructor <init>(Lim/doit/pro/exp/FavoritesActivity;Lim/doit/pro/exp/FavoritesActivity$Fav;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$3;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    iput-object p2, p0, Lim/doit/pro/exp/FavoritesActivity$3;->val$f:Lim/doit/pro/exp/FavoritesActivity$Fav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 174
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$3;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    iget-object v0, p0, Lim/doit/pro/exp/FavoritesActivity$3;->val$f:Lim/doit/pro/exp/FavoritesActivity$Fav;

    iget-object v0, v0, Lim/doit/pro/exp/FavoritesActivity$Fav;->u:Ljava/lang/String;

    invoke-static {p1, v0}, Lim/doit/pro/exp/FavoritesActivity;->access$200(Lim/doit/pro/exp/FavoritesActivity;Ljava/lang/String;)V

    return-void
.end method

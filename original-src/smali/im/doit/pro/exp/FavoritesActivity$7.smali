.class Lim/doit/pro/exp/FavoritesActivity$7;
.super Ljava/lang/Object;
.source "FavoritesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/FavoritesActivity;->confirmDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/exp/FavoritesActivity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lim/doit/pro/exp/FavoritesActivity;Landroid/app/Dialog;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$7;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    iput-object p2, p0, Lim/doit/pro/exp/FavoritesActivity$7;->val$d:Landroid/app/Dialog;

    iput p3, p0, Lim/doit/pro/exp/FavoritesActivity$7;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 239
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$7;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 240
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$7;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    invoke-static {p1}, Lim/doit/pro/exp/FavoritesActivity;->access$400(Lim/doit/pro/exp/FavoritesActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lim/doit/pro/exp/FavoritesActivity$7;->val$idx:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 241
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$7;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    invoke-static {p1}, Lim/doit/pro/exp/FavoritesActivity;->access$500(Lim/doit/pro/exp/FavoritesActivity;)V

    .line 242
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$7;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    invoke-static {p1}, Lim/doit/pro/exp/FavoritesActivity;->access$600(Lim/doit/pro/exp/FavoritesActivity;)V

    .line 243
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$7;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    const-string v0, "\u5df2\u5220\u9664"

    invoke-static {p1, v0}, Lim/doit/pro/exp/FavoritesActivity;->access$300(Lim/doit/pro/exp/FavoritesActivity;Ljava/lang/String;)V

    .line 244
    return-void
.end method

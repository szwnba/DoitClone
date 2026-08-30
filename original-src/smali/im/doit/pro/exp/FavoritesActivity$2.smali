.class Lim/doit/pro/exp/FavoritesActivity$2;
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

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lim/doit/pro/exp/FavoritesActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$2;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    iput p2, p0, Lim/doit/pro/exp/FavoritesActivity$2;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 167
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$2;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    iget v0, p0, Lim/doit/pro/exp/FavoritesActivity$2;->val$idx:I

    invoke-static {p1, v0}, Lim/doit/pro/exp/FavoritesActivity;->access$100(Lim/doit/pro/exp/FavoritesActivity;I)V

    return-void
.end method

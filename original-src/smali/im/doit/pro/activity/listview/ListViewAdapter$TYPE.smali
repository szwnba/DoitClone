.class public Lim/doit/pro/activity/listview/ListViewAdapter$TYPE;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TYPE"
.end annotation


# static fields
.field public static final GOAL:I = 0x3

.field public static final GROUPER:I = 0x1

.field public static final PROJECT:I = 0x2

.field public static final TAG_FILTER:I = 0x5

.field public static final TASK:I = 0x0

.field public static final TASK_CONTEXT:I = 0x4


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$TYPE;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
